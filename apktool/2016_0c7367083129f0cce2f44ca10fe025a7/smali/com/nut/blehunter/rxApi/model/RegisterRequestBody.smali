.class public Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;
.super Ljava/lang/Object;
.source "RegisterRequestBody.java"


# instance fields
.field public final captcha:Ljava/lang/String;

.field public final country_code:Ljava/lang/String;

.field public final email:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final phone_number:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;->email:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;->country_code:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;->phone_number:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;->captcha:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;->password:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static createWithEmail(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWithMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;
    .locals 6

    .prologue
    .line 21
    new-instance v0, Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/rxApi/model/RegisterRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
