import { Body, Controller, Post } from '@nestjs/common';
import { AuthDto } from './dto/auth.dto';
import { AuthService } from './auth.service';

@Controller('auth')
export class AuthController {
  constructor(private authService: AuthService) {}
  @Post('signup')
  async signup(@Body() authDto: AuthDto) {
    return this.authService.signup(authDto);
  }
  @Post('signin')
  async signin(@Body() authDto: AuthDto) {
    return this.authService.signin(authDto);
  }
  @Post('logout')
  async logout(userId: string) {
    return this.authService.logout(userId);
  }
}
