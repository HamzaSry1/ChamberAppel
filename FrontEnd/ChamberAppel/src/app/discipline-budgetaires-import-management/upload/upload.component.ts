import { Component, EventEmitter, Output } from '@angular/core';
import { AppMessageService } from 'src/app/app-message.service';
import { AuthService } from 'src/app/auth/auth.service';
import { BooleanApiResponse } from 'src/app/generatedapis/models/BooleanApiResponse';
import { EnumFileType } from 'src/app/generatedapis/models/EnumFileType';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { ImportService } from 'src/app/generatedapis/services/ImportService';

@Component({
  selector: 'app-upload',
  templateUrl: './upload.component.html',
  styleUrls: ['./upload.component.scss']
})
export class UploadComponent {

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

    ImportService.postApiImportImporte(updatedBy,EnumFileType._0 ,{ file: formData.get('file') as Blob })
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
