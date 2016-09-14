.class public Lcom/nut/blehunter/ui/SafeRegionManageActivity;
.super Lcom/nut/blehunter/ui/b;
.source "SafeRegionManageActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nut/blehunter/ui/b;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/nut/blehunter/entity/Friend;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Lcom/nut/blehunter/ui/a/a/b/a;

.field private e:Lcom/nut/blehunter/ui/widget/m;

.field private f:Lcom/nut/blehunter/ui/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nut/blehunter/ui/a/a/a",
            "<",
            "Lcom/nut/blehunter/entity/SafeRegion;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/entity/SafeRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 57
    const/16 v0, 0xa

    iput v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->a:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)Lcom/nut/blehunter/entity/Friend;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Lcom/nut/blehunter/ui/widget/m;)Lcom/nut/blehunter/ui/widget/m;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->e:Lcom/nut/blehunter/ui/widget/m;

    return-object p1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Lcom/nut/blehunter/entity/SafeRegion;)V
    .locals 4

    .prologue
    .line 11159
    if-eqz p1, :cond_0

    .line 11162
    const v0, 0x7f0600ad

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/nut/blehunter/entity/SafeRegion;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11163
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 11164
    const v2, 0x7f0600df

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 11165
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 11166
    const v0, 0x7f060085

    new-instance v2, Lcom/nut/blehunter/ui/fi;

    invoke-direct {v2, p0, p1}, Lcom/nut/blehunter/ui/fi;-><init>(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Lcom/nut/blehunter/entity/SafeRegion;)V

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 11172
    const v0, 0x7f060083

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 11173
    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 12060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 227
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Friend;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nut/blehunter/entity/Friend;->i:Ljava/util/ArrayList;

    .line 234
    :cond_2
    if-eqz p2, :cond_4

    .line 235
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Friend;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 243
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    new-instance v2, Lcom/nut/blehunter/rxApi/model/UpdateFriendInfoRequestBody;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    iget-object v4, v4, Lcom/nut/blehunter/entity/Friend;->i:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/nut/blehunter/rxApi/model/UpdateFriendInfoRequestBody;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/nut/blehunter/rxApi/service/FriendsService;->putFriend(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/UpdateFriendInfoRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/fk;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/fk;-><init>(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Friend;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 238
    if-ltz v0, :cond_3

    .line 239
    iget-object v1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Friend;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10181
    iget-object v1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Friend;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Friend;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10184
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Friend;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 12259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12262
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 12263
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->f()Lcom/nut/blehunter/rxApi/service/RegionService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nut/blehunter/rxApi/service/RegionService;->deleteSafeRegion(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/fl;

    invoke-direct {v1, p0, p1}, Lcom/nut/blehunter/ui/fl;-><init>(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)Lcom/nut/blehunter/ui/widget/m;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->e:Lcom/nut/blehunter/ui/widget/m;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 317
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 318
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 319
    const-string v0, "safe_region"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/SafeRegion;

    .line 320
    if-eqz v0, :cond_0

    .line 321
    iget-object v0, v0, Lcom/nut/blehunter/entity/SafeRegion;->e:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->a(Ljava/lang/String;Z)V

    .line 322
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->f:Lcom/nut/blehunter/ui/a/a/a;

    .line 8102
    iget-object v0, v0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->b()V

    .line 326
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->finish()V

    .line 312
    const/4 v0, 0x0

    const v1, 0x7f040011

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->overridePendingTransition(II)V

    .line 313
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->setContentView(I)V

    .line 71
    const v0, 0x7f060135

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->a(I)V

    .line 72
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    const-string v1, "friend"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Friend;

    iput-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->b:Lcom/nut/blehunter/entity/Friend;

    .line 7099
    :cond_0
    const v0, 0x7f0d00bd

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 7100
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V

    .line 7101
    new-instance v0, Lcom/nut/blehunter/ui/fe;

    iget-object v1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->g:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/nut/blehunter/ui/fe;-><init>(Lcom/nut/blehunter/ui/SafeRegionManageActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->f:Lcom/nut/blehunter/ui/a/a/a;

    .line 7121
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->f:Lcom/nut/blehunter/ui/a/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 7123
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->f:Lcom/nut/blehunter/ui/a/a/a;

    new-instance v1, Lcom/nut/blehunter/ui/fg;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/fg;-><init>(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/a/a/a;->a(Lcom/nut/blehunter/ui/a/a/f;)V

    .line 7194
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->f()Lcom/nut/blehunter/rxApi/service/RegionService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nut/blehunter/rxApi/service/RegionService;->getSafeRegion()Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->b(Lrx/m;)Lrx/h;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/m;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/fj;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/fj;-><init>(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/k;)Lrx/u;

    .line 78
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 79
    return-void
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
    .line 280
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 281
    if-nez v0, :cond_0

    const-string v0, ""

    move-object v1, v0

    .line 282
    :goto_0
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/nut/blehunter/provider/g;->a:Landroid/net/Uri;

    sget-object v3, Lcom/nut/blehunter/provider/n;->b:[Ljava/lang/String;

    const-string v4, "user_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 281
    :cond_0
    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 53
    check-cast p2, Landroid/database/Cursor;

    .line 8288
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8289
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 8290
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8291
    invoke-static {}, Lcom/nut/blehunter/provider/n;->b()Lcom/nut/blehunter/provider/n;

    invoke-static {p2}, Lcom/nut/blehunter/provider/n;->a(Landroid/database/Cursor;)Lcom/nut/blehunter/entity/SafeRegion;

    move-result-object v0

    .line 8292
    iget-object v1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8295
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 8296
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9188
    new-instance v0, Lcom/nut/blehunter/ui/a/a/b/a;

    iget-object v1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->f:Lcom/nut/blehunter/ui/a/a/a;

    invoke-direct {v0, v1}, Lcom/nut/blehunter/ui/a/a/b/a;-><init>(Landroid/support/v7/widget/dx;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->d:Lcom/nut/blehunter/ui/a/a/b/a;

    .line 9189
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->d:Lcom/nut/blehunter/ui/a/a/b/a;

    .line 10099
    const v1, 0x7f0300bb

    iput v1, v0, Lcom/nut/blehunter/ui/a/a/b/a;->c:I

    .line 9190
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->d:Lcom/nut/blehunter/ui/a/a/b/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 8301
    :goto_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->f:Lcom/nut/blehunter/ui/a/a/a;

    .line 10102
    iget-object v0, v0, Landroid/support/v7/widget/dx;->a:Landroid/support/v7/widget/dy;

    invoke-virtual {v0}, Landroid/support/v7/widget/dy;->b()V

    .line 53
    :cond_1
    return-void

    .line 8299
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->f:Lcom/nut/blehunter/ui/a/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    goto :goto_1
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
    .line 307
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 91
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/SetSafeRegionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/SafeRegionManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0245
        :pswitch_0
    .end packed-switch
.end method
