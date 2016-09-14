.class public Lcom/nut/blehunter/rxApi/model/HandleFriendRequestBody;
.super Ljava/lang/Object;
.source "HandleFriendRequestBody.java"


# static fields
.field public static final STATE_ACCEPT:Ljava/lang/String; = "1"

.field public static final STATE_DELETE:Ljava/lang/String; = "2"


# instance fields
.field public final state:Ljava/lang/String;

.field public final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/HandleFriendRequestBody;->uuid:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/HandleFriendRequestBody;->state:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static createHandleFriendBody(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/HandleFriendRequestBody;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/nut/blehunter/rxApi/model/HandleFriendRequestBody;

    invoke-direct {v0, p0, p1}, Lcom/nut/blehunter/rxApi/model/HandleFriendRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
