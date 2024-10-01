import { DisciplineBudgetairesImportService } from './../../generatedapis/services/DisciplineBudgetairesImportService';
import { Component, EventEmitter, Input, Output } from '@angular/core';
import { AppMessageService } from 'src/app/app-message.service';
import { AuthService } from 'src/app/auth/auth.service';
import { BooleanApiResponse } from 'src/app/generatedapis/models/BooleanApiResponse';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';

@Component({
  selector: 'app-importe-upload',
  templateUrl: './importe-upload.component.html',
  styleUrls: ['./importe-upload.component.scss']
})
export class ImporteUploadComponent {

  @Output() FormIsPassed: EventEmitter<any> = new EventEmitter();

  public selectedFile!: File;
  constructor(private _notify: AppMessageService, private _authService: AuthService) { }

  OnFileSelected(event: any) {
    this.selectedFile = event.target.files[0];
  }

  Upload() {

    /*
      TODO : 
    
        -validate the form first
        -accept only the execl file
    
    */

    const formData = new FormData();
    formData.append('file', this.selectedFile);

    let updatedBy = this._authService.GetCurrentUserName();

    DisciplineBudgetairesImportService.postApiDisciplineBudgetairesImportImporte(updatedBy, { file: formData.get('file') as Blob })
      .then((res: BooleanApiResponse) => {
        if (res.statusCode === HttpStatusCode._200) {
          // the file is uploaded 
          this.FormIsPassed.emit(true);
          this._notify.Success(AppMessageService.UploadFileSuccess);
        }
      })
      .catch((error) => {
        // error 
        this.FormIsPassed.emit(false);
        this._notify.Error(AppMessageService.UploadFileError);
      });
  }
}
