.class public Lcom/nut/blehunter/ui/ShareManageActivity;
.super Lcom/nut/blehunter/ui/b;
.source "ShareManageActivity.java"


# instance fields
.field private a:Lcom/nut/blehunter/entity/Nut;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Lcom/nut/blehunter/ui/gl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 197
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ShareManageActivity;)Lcom/nut/blehunter/ui/gl;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->c:Lcom/nut/blehunter/ui/gl;

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ShareManageActivity;Lcom/nut/blehunter/entity/Nut;Lcom/nut/blehunter/entity/ShareUserInfo;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4167
    if-nez p1, :cond_1

    move v3, v1

    :goto_0
    if-nez p2, :cond_2

    move v0, v1

    :goto_1
    or-int/2addr v0, v3

    if-nez v0, :cond_0

    .line 4170
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 4171
    const v3, 0x7f0600da

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 4172
    const v3, 0x7f0600a6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v2, p2, Lcom/nut/blehunter/entity/ShareUserInfo;->b:Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/nut/blehunter/ui/ShareManageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    .line 4173
    const v1, 0x7f060083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 4174
    const v1, 0x7f060085

    new-instance v2, Lcom/nut/blehunter/ui/gk;

    invoke-direct {v2, p0, p2}, Lcom/nut/blehunter/ui/gk;-><init>(Lcom/nut/blehunter/ui/ShareManageActivity;Lcom/nut/blehunter/entity/ShareUserInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 4181
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 4182
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 4167
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ShareManageActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 43
    .line 3105
    iget-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    if-eqz v0, :cond_2

    .line 3108
    iget-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    .line 3422
    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3423
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3424
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/ShareUserInfo;

    .line 3425
    iget-object v0, v0, Lcom/nut/blehunter/entity/ShareUserInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3426
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3109
    :cond_1
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 43
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/ShareManageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 4142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4143
    :cond_0
    :goto_0
    return-void

    .line 4145
    :cond_1
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 4146
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/rxApi/model/DeleteSharedRequestBody;

    invoke-direct {v1, p1, p2}, Lcom/nut/blehunter/rxApi/model/DeleteSharedRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/nut/blehunter/rxApi/service/AccountService;->deleteShared(Lcom/nut/blehunter/rxApi/model/DeleteSharedRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/gj;

    invoke-direct {v1, p0, p2}, Lcom/nut/blehunter/ui/gj;-><init>(Lcom/nut/blehunter/ui/ShareManageActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/ShareManageActivity;)Lcom/nut/blehunter/entity/Nut;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/ShareManageActivity;->setResult(ILandroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ShareManageActivity;->finish()V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ShareManageActivity;->setContentView(I)V

    .line 55
    const v0, 0x7f0601b1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ShareManageActivity;->a(I)V

    .line 56
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ShareManageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    const-string v1, "nut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    iput-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    .line 1094
    :cond_0
    const v0, 0x7f0d00bd

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ShareManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->b:Landroid/support/v7/widget/RecyclerView;

    .line 1095
    new-instance v0, Lcom/nut/blehunter/ui/gl;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/gl;-><init>(Lcom/nut/blehunter/ui/ShareManageActivity;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->c:Lcom/nut/blehunter/ui/gl;

    .line 1096
    iget-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V

    .line 1097
    iget-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->c:Lcom/nut/blehunter/ui/gl;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 1099
    iget-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    .line 1113
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 1114
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v1

    const-string v2, "articleUUID"

    invoke-static {v2, v0}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nut/blehunter/rxApi/service/AccountService;->getSharedUsers(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/gi;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/gi;-><init>(Lcom/nut/blehunter/ui/ShareManageActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 61
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ShareManageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0247

    if-ne v0, v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 73
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nut/blehunter/ui/LookForShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/ShareManageActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    const-string v0, "NTGroupControlEvent"

    const-string v1, "ENTRY_TAPPED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "find_mode_share_button_tapped"

    .line 1281
    invoke-static {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 2186
    :cond_2
    const v0, 0x7f0600d0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nut/blehunter/ui/ShareManageActivity;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/ShareManageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2187
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 2188
    const v2, 0x7f0600ef

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v1, 0x7f06008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 2194
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/ShareManageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "baseDialog"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
