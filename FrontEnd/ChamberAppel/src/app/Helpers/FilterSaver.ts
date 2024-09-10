import { FormGroup } from '@angular/forms';

export class FilterSaver {
  savedFilters: any;
  savedFiltersName = 'default-filters';
  constructor(
    private FilterForm: FormGroup,
    private pageName: string,
  ) {
    this.savedFiltersName = pageName + '-filters';
  }

  loadSavedFilters() {
    try {
      const savedFilters = localStorage.getItem(this.savedFiltersName);
      const currentFilters = JSON.stringify(this.FilterForm.value);
      if (savedFilters && savedFilters != currentFilters) {
        this.savedFilters = JSON.parse(savedFilters);
        this.FilterForm.setValue(this.savedFilters);
        this.FilterForm.markAsDirty();
      }
    } catch {
      this.clearFilters();
    }
  }
  saveFilters() {
    this.savedFilters = this.FilterForm.value;
    localStorage.setItem(this.savedFiltersName, JSON.stringify(this.savedFilters));
  }
  clearFilters() {
    this.FilterForm.reset();
    this.savedFilters = null;
    localStorage.removeItem(this.savedFiltersName);
  }
}
