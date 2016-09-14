.class public Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;
.super Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;
.source "ValidCaptchaRequestBody.java"


# instance fields
.field public final captcha:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-object p5, p0, Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;->captcha:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static createGetCaptchaRequestBodyWithMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;
    .locals 6

    .prologue
    .line 11
    new-instance v0, Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/rxApi/model/ValidCaptchaRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
