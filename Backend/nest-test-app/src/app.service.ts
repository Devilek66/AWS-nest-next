import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World! z pełnym pipelinem baby :D itest nr 2';
  }
}
