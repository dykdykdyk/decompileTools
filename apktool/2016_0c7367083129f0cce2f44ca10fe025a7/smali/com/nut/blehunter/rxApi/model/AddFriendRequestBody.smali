.class public Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;
.super Ljava/lang/Object;
.source "AddFriendRequestBody.java"


# instance fields
.field public final country_code:Ljava/lang/String;

.field public final email:Ljava/lang/String;

.field public final phone_number:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p3, p0, Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;->email:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/nut/blehunter/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;->country_code:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;->phone_number:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static createWithEmail(Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    new-instance v0, Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;

    invoke-direct {v0, v1, v1, p0}, Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWithPhone(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
