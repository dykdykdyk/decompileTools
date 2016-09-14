.class public Lcom/nut/blehunter/ui/FriendManageActivity;
.super Lcom/nut/blehunter/ui/b;
.source "FriendManageActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nut/blehunter/ui/b;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/nut/blehunter/entity/User;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Lcom/nut/blehunter/ui/widget/m;

.field private d:Lcom/nut/blehunter/ui/at;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 277
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/FriendManageActivity;)Lcom/nut/blehunter/entity/User;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->a:Lcom/nut/blehunter/entity/User;

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/FriendManageActivity;Lcom/nut/blehunter/ui/widget/m;)Lcom/nut/blehunter/ui/widget/m;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->c:Lcom/nut/blehunter/ui/widget/m;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/FriendManageActivity;Lcom/nut/blehunter/entity/Friend;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 10134
    if-eqz p1, :cond_0

    .line 10137
    const v0, 0x7f0600dd

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/FriendManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10138
    const v1, 0x7f0600aa

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/nut/blehunter/entity/Friend;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/FriendManageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10139
    new-instance v2, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 10140
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/FriendManageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03005f

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 10141
    const v3, 0x7f060086

    new-instance v4, Lcom/nut/blehunter/ui/aq;

    invoke-direct {v4, p0, p1}, Lcom/nut/blehunter/ui/aq;-><init>(Lcom/nut/blehunter/ui/FriendManageActivity;Lcom/nut/blehunter/entity/Friend;)V

    invoke-virtual {v2, v3, v4}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 10147
    const v3, 0x7f060083

    invoke-virtual {v2, v3, v5}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 10148
    iget-object v3, p1, Lcom/nut/blehunter/entity/Friend;->c:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/f;

    move-result-object v0

    .line 10149
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/f;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/FriendManageActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    .line 9258
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 9259
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nut/blehunter/rxApi/service/FriendsService;->deleteFriend(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/as;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ui/as;-><init>(Lcom/nut/blehunter/ui/FriendManageActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 54
    return-void
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/FriendManageActivity;)Lcom/nut/blehunter/ui/widget/m;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->c:Lcom/nut/blehunter/ui/widget/m;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nut/blehunter/rxApi/service/FriendsService;->getFriend()Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/ar;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/ar;-><init>(Lcom/nut/blehunter/ui/FriendManageActivity;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    .line 255
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 154
    packed-switch p1, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 156
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/nut/blehunter/ui/FriendManageActivity;->c()V

    goto :goto_0

    .line 161
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/nut/blehunter/ui/FriendManageActivity;->c()V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 8098
    :pswitch_0
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 8099
    if-eqz v0, :cond_0

    .line 8102
    const-string v1, "new_friend_request"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 8103
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8104
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    :cond_0
    const v0, 0x7f0d00bb

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/FriendManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/NewFriendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8130
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/FriendManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00b8
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0d00bb

    .line 73
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/FriendManageActivity;->setContentView(I)V

    .line 75
    const v0, 0x7f060109

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/FriendManageActivity;->a(I)V

    .line 7081
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->a:Lcom/nut/blehunter/entity/User;

    .line 7083
    const v0, 0x7f0d00b8

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/FriendManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7085
    invoke-static {p0}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;)I

    move-result v1

    .line 7086
    if-lez v1, :cond_0

    .line 7087
    const v0, 0x7f0d00bc

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/FriendManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7088
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/FriendManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7093
    :goto_0
    const v0, 0x7f0d00bd

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/FriendManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->b:Landroid/support/v7/widget/RecyclerView;

    .line 7094
    new-instance v0, Lcom/nut/blehunter/ui/at;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/at;-><init>(Lcom/nut/blehunter/ui/FriendManageActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->d:Lcom/nut/blehunter/ui/at;

    .line 7095
    iget-object v0, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V

    .line 7096
    iget-object v0, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->d:Lcom/nut/blehunter/ui/at;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 7098
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/FriendManageActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 77
    return-void

    .line 7090
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/FriendManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 171
    if-nez v0, :cond_0

    const-string v0, ""

    move-object v1, v0

    .line 172
    :goto_0
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/nut/blehunter/provider/c;->a:Landroid/net/Uri;

    sget-object v3, Lcom/nut/blehunter/provider/j;->b:[Ljava/lang/String;

    const-string v4, "user_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-object v0

    .line 171
    :cond_0
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/FriendManageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 54
    check-cast p2, Landroid/database/Cursor;

    .line 8179
    iget-object v0, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->d:Lcom/nut/blehunter/ui/at;

    iget-object v0, v0, Lcom/nut/blehunter/ui/at;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8180
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 8181
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 8182
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8183
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    invoke-static {p2}, Lcom/nut/blehunter/provider/j;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v0

    .line 8184
    if-eqz v0, :cond_0

    .line 8185
    iget-object v1, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->d:Lcom/nut/blehunter/ui/at;

    iget-object v1, v1, Lcom/nut/blehunter/ui/at;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8189
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->d:Lcom/nut/blehunter/ui/at;

    iget-object v0, v0, Lcom/nut/blehunter/ui/at;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 8190
    iget-object v0, p0, Lcom/nut/blehunter/ui/FriendManageActivity;->d:Lcom/nut/blehunter/ui/at;

    .line 9102
    iget-object v0, v0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->b()V

    .line 54
    :cond_2
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0245

    if-ne v0, v1, :cond_0

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/AddFriendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/FriendManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
