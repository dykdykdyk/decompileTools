.class public final Lcom/nut/blehunter/ui/b/e;
.super Lcom/nut/blehunter/rxApi/j;
.source "AddFriendByEmailFragment.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nut/blehunter/ui/b/d;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/b/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/e;->b:Lcom/nut/blehunter/ui/b/d;

    iput-object p2, p0, Lcom/nut/blehunter/ui/b/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 6

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/e;->b:Lcom/nut/blehunter/ui/b/d;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 120
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/e;->b:Lcom/nut/blehunter/ui/b/d;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 121
    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0x14d

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0x14a

    if-ne v0, v1, :cond_2

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/e;->b:Lcom/nut/blehunter/ui/b/d;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/e;->b:Lcom/nut/blehunter/ui/b/d;

    const v2, 0x7f060043

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nut/blehunter/ui/b/e;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/b/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1047
    const v2, 0x7f02026c

    invoke-static {v0, v2, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/e;->b:Lcom/nut/blehunter/ui/b/d;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/AddFriendActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/AddFriendActivity;->c()V

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0x14b

    if-ne v0, v1, :cond_3

    .line 125
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/e;->b:Lcom/nut/blehunter/ui/b/d;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 126
    :cond_3
    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/e;->b:Lcom/nut/blehunter/ui/b/d;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "add_friend_email_unregister"

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/e;->b:Lcom/nut/blehunter/ui/b/d;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 105
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/e;->b:Lcom/nut/blehunter/ui/b/d;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f060042

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 112
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/e;->b:Lcom/nut/blehunter/ui/b/d;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ui/AddFriendActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/AddFriendActivity;->c()V

    .line 115
    :cond_0
    return-void
.end method
