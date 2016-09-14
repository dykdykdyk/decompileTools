.class public Lcom/nut/blehunter/rxApi/model/ResetPasswordRequestBody;
.super Ljava/lang/Object;
.source "ResetPasswordRequestBody.java"


# instance fields
.field public final countryCode:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final phoneNumber:Ljava/lang/String;

.field public final plainPassword:Ljava/lang/String;

.field public final smsCaptcha:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/ResetPasswordRequestBody;->countryCode:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/ResetPasswordRequestBody;->phoneNumber:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/nut/blehunter/rxApi/model/ResetPasswordRequestBody;->smsCaptcha:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/nut/blehunter/rxApi/model/ResetPasswordRequestBody;->password:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/nut/blehunter/rxApi/model/ResetPasswordRequestBody;->plainPassword:Ljava/lang/String;

    .line 26
    return-void
.end method
