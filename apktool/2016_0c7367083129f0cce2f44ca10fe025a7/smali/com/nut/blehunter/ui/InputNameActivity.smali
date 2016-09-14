.class public Lcom/nut/blehunter/ui/InputNameActivity;
.super Lcom/nut/blehunter/ui/b;
.source "InputNameActivity.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/nut/blehunter/entity/SafeRegion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/InputNameActivity;Lcom/nut/blehunter/entity/SafeRegion;)V
    .locals 2

    .prologue
    .line 3102
    invoke-static {}, Lcom/nut/blehunter/provider/n;->b()Lcom/nut/blehunter/provider/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nut/blehunter/provider/n;->a(Lcom/nut/blehunter/entity/SafeRegion;)V

    .line 3103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3104
    const-string v1, "safe_region"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3105
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/InputNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 3106
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/InputNameActivity;->finish()V

    .line 31
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/InputNameActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f060135

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/InputNameActivity;->a(I)V

    .line 42
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/InputNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    const-string v1, "safe_region"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/SafeRegion;

    iput-object v0, p0, Lcom/nut/blehunter/ui/InputNameActivity;->b:Lcom/nut/blehunter/entity/SafeRegion;

    .line 1048
    const v0, 0x7f0d00c7

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/InputNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nut/blehunter/ui/InputNameActivity;->a:Landroid/widget/EditText;

    .line 1049
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputNameActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/nut/blehunter/ui/ba;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/ba;-><init>(Lcom/nut/blehunter/ui/InputNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1063
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputNameActivity;->b:Lcom/nut/blehunter/entity/SafeRegion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/InputNameActivity;->b:Lcom/nut/blehunter/entity/SafeRegion;

    iget-object v0, v0, Lcom/nut/blehunter/entity/SafeRegion;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputNameActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nut/blehunter/ui/InputNameActivity;->b:Lcom/nut/blehunter/entity/SafeRegion;

    iget-object v1, v1, Lcom/nut/blehunter/entity/SafeRegion;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputNameActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nut/blehunter/ui/InputNameActivity;->b:Lcom/nut/blehunter/entity/SafeRegion;

    iget-object v1, v1, Lcom/nut/blehunter/entity/SafeRegion;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 45
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/InputNameActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0e0009

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 73
    iget-object v2, p0, Lcom/nut/blehunter/ui/InputNameActivity;->a:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/nut/blehunter/ui/InputNameActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 76
    :cond_0
    const v2, 0x7f0d0248

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 77
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0d0248

    if-ne v1, v2, :cond_1

    .line 83
    iget-object v1, p0, Lcom/nut/blehunter/ui/InputNameActivity;->a:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nut/blehunter/ui/InputNameActivity;->b:Lcom/nut/blehunter/entity/SafeRegion;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/nut/blehunter/ui/InputNameActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/nut/blehunter/d/r;->a(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x18

    if-le v2, v3, :cond_0

    .line 86
    const v1, 0x7f0601ef

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "24"

    aput-object v3, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/nut/blehunter/ui/InputNameActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2047
    const v2, 0x7f02026c

    invoke-static {p0, v2, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 98
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputNameActivity;->b:Lcom/nut/blehunter/entity/SafeRegion;

    iput-object v1, v0, Lcom/nut/blehunter/entity/SafeRegion;->f:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputNameActivity;->b:Lcom/nut/blehunter/entity/SafeRegion;

    iget-object v0, v0, Lcom/nut/blehunter/entity/SafeRegion;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputNameActivity;->b:Lcom/nut/blehunter/entity/SafeRegion;

    .line 2110
    if-eqz v0, :cond_1

    .line 2113
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 2114
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->f()Lcom/nut/blehunter/rxApi/service/RegionService;

    move-result-object v1

    invoke-static {v0}, Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;->createAddSafeRegionRequestBody(Lcom/nut/blehunter/entity/SafeRegion;)Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nut/blehunter/rxApi/service/RegionService;->addSafeRegion(Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/bb;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bb;-><init>(Lcom/nut/blehunter/ui/InputNameActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 98
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/InputNameActivity;->b:Lcom/nut/blehunter/entity/SafeRegion;

    .line 2137
    if-eqz v0, :cond_1

    .line 2140
    invoke-static {p0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 2141
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->f()Lcom/nut/blehunter/rxApi/service/RegionService;

    move-result-object v1

    invoke-static {v0}, Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;->createModifySafeRegionRequestBody(Lcom/nut/blehunter/entity/SafeRegion;)Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nut/blehunter/rxApi/service/RegionService;->modifySafeRegion(Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/nut/blehunter/ui/bc;

    invoke-direct {v2, p0, v0}, Lcom/nut/blehunter/ui/bc;-><init>(Lcom/nut/blehunter/ui/InputNameActivity;Lcom/nut/blehunter/entity/SafeRegion;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_1
.end method
