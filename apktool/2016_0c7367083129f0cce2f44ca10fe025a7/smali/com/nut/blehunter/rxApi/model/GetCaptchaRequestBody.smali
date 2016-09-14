.class public Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;
.super Ljava/lang/Object;
.source "GetCaptchaRequestBody.java"


# static fields
.field public static final CAPTCHA_TYPE_BIND_MOBILE:Ljava/lang/String; = "BIND_MOBILE"

.field public static final CAPTCHA_TYPE_CHANGE_MOBILE_NEW:Ljava/lang/String; = "MODIFY_MOBILE_NEW"

.field public static final CAPTCHA_TYPE_CHANGE_MOBILE_OLD:Ljava/lang/String; = "MODIFY_MOBILE_OLD"

.field public static final CAPTCHA_TYPE_REGISTER:Ljava/lang/String; = "NUT_REGISTER_ACCOUNT"

.field public static final CAPTCHA_TYPE_RRESET_PASSWORD:Ljava/lang/String; = "NUT_RESET_PASSWORD"


# instance fields
.field public final captchaType:Ljava/lang/String;

.field public final countryCode:Ljava/lang/String;

.field public final email:Ljava/lang/String;

.field public final phoneNumber:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;->countryCode:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;->phoneNumber:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;->captchaType:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;->email:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static createGetCaptchaRequestBodyWithEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;

    invoke-static {p0}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createGetCaptchaRequestBodyWithMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;

    invoke-static {p0}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
