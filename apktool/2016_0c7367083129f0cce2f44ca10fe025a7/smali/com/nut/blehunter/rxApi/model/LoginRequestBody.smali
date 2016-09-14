.class public Lcom/nut/blehunter/rxApi/model/LoginRequestBody;
.super Ljava/lang/Object;
.source "LoginRequestBody.java"


# instance fields
.field public final country_code:Ljava/lang/String;

.field public final email:Ljava/lang/String;

.field public final facebook_access_token:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final phone_number:Ljava/lang/String;

.field public final qq_access_token:Ljava/lang/String;

.field public final qq_open_id:Ljava/lang/String;

.field public final twitter_open_id:Ljava/lang/String;

.field public final weibo_access_token:Ljava/lang/String;

.field public final weibo_open_id:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->email:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->country_code:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->phone_number:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->password:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->qq_open_id:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->qq_access_token:Ljava/lang/String;

    .line 70
    iput-object p7, p0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->facebook_access_token:Ljava/lang/String;

    .line 71
    iput-object p8, p0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->twitter_open_id:Ljava/lang/String;

    .line 72
    iput-object p9, p0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->weibo_open_id:Ljava/lang/String;

    .line 73
    iput-object p10, p0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->weibo_access_token:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static createWithEmail(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/LoginRequestBody;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    invoke-direct/range {v0 .. v10}, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWithFacebook(Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/LoginRequestBody;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, p0

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWithMobile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/LoginRequestBody;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;

    invoke-static {p0}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWithQQ(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/LoginRequestBody;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 39
    new-instance v0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, p0

    move-object v6, p1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWithTwitter(Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/LoginRequestBody;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, p0

    move-object v9, v1

    move-object v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWithWeibo(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/LoginRequestBody;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v0, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
