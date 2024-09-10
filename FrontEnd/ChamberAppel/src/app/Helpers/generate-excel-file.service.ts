import { Injectable } from '@angular/core';
import { saveAs } from 'file-saver';
@Injectable({
  providedIn: 'root',
})
export class GenerateExcelFileService {
  public static GenerateExcel(data: any, fileName: string) {
    const file = new Blob([data], {
      type: 'application/vnd.openxmlformats-ficedocument.spreadsheetml.sheet',
    });
    fileName = fileName + '.xlsx';
    saveAs(file, fileName);
  }

  public static Generate(data: any, fileName: string, ContentTypeFile?: string) {
    const file = new Blob([data], {
      type: ContentTypeFile == 'application/pdf' ? 'application/pdf' : 'image/png',
    });
    saveAs(file, fileName);
  }
}
