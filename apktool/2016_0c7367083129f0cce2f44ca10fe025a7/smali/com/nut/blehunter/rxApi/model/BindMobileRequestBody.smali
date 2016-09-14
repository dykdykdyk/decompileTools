.class public Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;
.super Ljava/lang/Object;
.source "BindMobileRequestBody.java"


# instance fields
.field public final captcha:Ljava/lang/String;

.field public final countryCode:Ljava/lang/String;

.field public final originalCaptcha:Ljava/lang/String;

.field public final originalCountryCode:Ljava/lang/String;

.field public final originalMobile:Ljava/lang/String;

.field public final phoneNumber:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;->originalCountryCode:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;->originalMobile:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;->originalCaptcha:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;->countryCode:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;->phoneNumber:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;->captcha:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static createBindMobileRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 23
    new-instance v0, Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;

    invoke-static {p0}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v1

    move-object v3, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createModifyMobileRequestBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;
    .locals 7

    .prologue
    .line 28
    new-instance v0, Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;

    invoke-static {p0}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nut/blehunter/rxApi/model/BindMobileRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
