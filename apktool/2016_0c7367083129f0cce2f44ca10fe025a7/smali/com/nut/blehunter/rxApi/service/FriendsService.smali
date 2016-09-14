.class public interface abstract Lcom/nut/blehunter/rxApi/service/FriendsService;
.super Ljava/lang/Object;
.source "FriendsService.java"


# virtual methods
.method public abstract addFriend(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p2    # Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nut/blehunter/rxApi/model/AddFriendRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/v1/friend/{type}"
    .end annotation
.end method

.method public abstract deleteFriend(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uuid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "/api/v1/friend/{uuid}"
    .end annotation
.end method

.method public abstract getFriend()Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/v1/friend"
    .end annotation
.end method

.method public abstract getLocationRecord(Ljava/lang/String;II)Lrx/h;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "friend_uuid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "start_time"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "end_time"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lrx/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/v1/friend/position"
    .end annotation
.end method

.method public abstract getUnhandledFriend()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/v1/friend/apply"
    .end annotation
.end method

.method public abstract handleFriendRequest(Lcom/nut/blehunter/rxApi/model/HandleFriendRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/nut/blehunter/rxApi/model/HandleFriendRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/HandleFriendRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/v1/friend/apply"
    .end annotation
.end method

.method public abstract postPosition(Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/v1/user/position"
    .end annotation
.end method

.method public abstract putFriend(Lcom/nut/blehunter/rxApi/model/UpdateFriendPositionRequestBody;)Lretrofit2/Call;
    .param p1    # Lcom/nut/blehunter/rxApi/model/UpdateFriendPositionRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/UpdateFriendPositionRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/v1/friend"
    .end annotation
.end method

.method public abstract putFriend(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/UpdateFriendInfoRequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uuid"
        .end annotation
    .end param
    .param p2    # Lcom/nut/blehunter/rxApi/model/UpdateFriendInfoRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nut/blehunter/rxApi/model/UpdateFriendInfoRequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/v1/friend/{uuid}"
    .end annotation
.end method

.method public abstract requestFriendPosition(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uuid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/v1/friend/position/{uuid}"
    .end annotation
.end method
