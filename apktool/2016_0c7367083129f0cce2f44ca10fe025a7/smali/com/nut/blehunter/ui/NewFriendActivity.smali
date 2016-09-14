.class public Lcom/nut/blehunter/ui/NewFriendActivity;
.super Lcom/nut/blehunter/ui/b;
.source "NewFriendActivity.java"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lcom/nut/blehunter/ui/widget/m;

.field private c:Lcom/nut/blehunter/ui/dr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/NewFriendActivity;)Lcom/nut/blehunter/ui/dr;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nut/blehunter/ui/NewFriendActivity;->c:Lcom/nut/blehunter/ui/dr;

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/NewFriendActivity;Lcom/nut/blehunter/ui/widget/m;)Lcom/nut/blehunter/ui/widget/m;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nut/blehunter/ui/NewFriendActivity;->b:Lcom/nut/blehunter/ui/widget/m;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/NewFriendActivity;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 36
    .line 2107
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 2108
    if-eqz p2, :cond_0

    const-string v0, "1"

    .line 2109
    :goto_0
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/nut/blehunter/rxApi/model/HandleFriendRequestBody;->createHandleFriendBody(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/HandleFriendRequestBody;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nut/blehunter/rxApi/service/FriendsService;->handleFriendRequest(Lcom/nut/blehunter/rxApi/model/HandleFriendRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/dq;

    invoke-direct {v1, p0, p2, p1}, Lcom/nut/blehunter/ui/dq;-><init>(Lcom/nut/blehunter/ui/NewFriendActivity;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 36
    return-void

    .line 2108
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/NewFriendActivity;Z)V
    .locals 2

    .prologue
    .line 36
    .line 2077
    const v0, 0x7f0d0111

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    return-void

    .line 2077
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/NewFriendActivity;)Lcom/nut/blehunter/ui/widget/m;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nut/blehunter/ui/NewFriendActivity;->b:Lcom/nut/blehunter/ui/widget/m;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->setContentView(I)V

    .line 48
    const v0, 0x7f060106

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->a(I)V

    .line 1068
    const v0, 0x7f0d00bd

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NewFriendActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 1069
    new-instance v0, Lcom/nut/blehunter/ui/dr;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/dr;-><init>(Lcom/nut/blehunter/ui/NewFriendActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/NewFriendActivity;->c:Lcom/nut/blehunter/ui/dr;

    .line 1070
    iget-object v0, p0, Lcom/nut/blehunter/ui/NewFriendActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V

    .line 1071
    iget-object v0, p0, Lcom/nut/blehunter/ui/NewFriendActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/NewFriendActivity;->c:Lcom/nut/blehunter/ui/dr;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 1081
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 1082
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nut/blehunter/rxApi/service/FriendsService;->getUnhandledFriend()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/dp;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/dp;-><init>(Lcom/nut/blehunter/ui/NewFriendActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NewFriendActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0245

    if-ne v0, v1, :cond_0

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/AddFriendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NewFriendActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
