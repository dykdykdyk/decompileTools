.class final Lcom/nut/blehunter/ui/dp;
.super Lcom/nut/blehunter/rxApi/j;
.source "NewFriendActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/NewFriendActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NewFriendActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/nut/blehunter/ui/dp;->a:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nut/blehunter/ui/dp;->a:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 101
    iget-object v0, p0, Lcom/nut/blehunter/ui/dp;->a:Lcom/nut/blehunter/ui/NewFriendActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 102
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nut/blehunter/ui/dp;->a:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 86
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/nut/blehunter/ui/dp;->a:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;)Lcom/nut/blehunter/ui/dr;

    move-result-object v1

    .line 7077
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7078
    const/4 v0, 0x0

    .line 7130
    :goto_0
    iput-object v0, v1, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    .line 90
    iget-object v0, p0, Lcom/nut/blehunter/ui/dp;->a:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;)Lcom/nut/blehunter/ui/dr;

    move-result-object v0

    .line 8130
    iget-object v0, v0, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    .line 90
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nut/blehunter/ui/dp;->a:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;)Lcom/nut/blehunter/ui/dr;

    move-result-object v0

    .line 9130
    iget-object v0, v0, Lcom/nut/blehunter/ui/dr;->c:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/nut/blehunter/ui/dp;->a:Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;)Lcom/nut/blehunter/ui/dr;

    move-result-object v0

    .line 10102
    iget-object v0, v0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->b()V

    .line 96
    :cond_0
    :goto_1
    return-void

    .line 7080
    :cond_1
    new-instance v2, Lcom/nut/blehunter/i;

    invoke-direct {v2}, Lcom/nut/blehunter/i;-><init>()V

    invoke-virtual {v2}, Lcom/nut/blehunter/i;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 7081
    invoke-static {v0, v2}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/dp;->a:Lcom/nut/blehunter/ui/NewFriendActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(Lcom/nut/blehunter/ui/NewFriendActivity;Z)V

    goto :goto_1
.end method
