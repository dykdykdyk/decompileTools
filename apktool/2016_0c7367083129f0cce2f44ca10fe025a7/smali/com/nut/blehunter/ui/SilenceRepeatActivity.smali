.class public Lcom/nut/blehunter/ui/SilenceRepeatActivity;
.super Lcom/nut/blehunter/ui/b;
.source "SilenceRepeatActivity.java"


# instance fields
.field a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method

.method private c()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 82
    .line 83
    iget-object v1, p0, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 84
    :goto_0
    if-ge v2, v3, :cond_0

    .line 85
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 86
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x1

    shl-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 84
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 23
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->setContentView(I)V

    .line 25
    const v0, 0x7f0601af

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->a(I)V

    .line 26
    const v0, 0x7f0d0150

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 27
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 28
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/nut/blehunter/ui/widget/c;

    invoke-direct {v1, p0, v3}, Lcom/nut/blehunter/ui/widget/c;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ef;)V

    .line 29
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 31
    iget-object v1, p0, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/eg;)V

    .line 32
    iget-object v0, p0, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/nut/blehunter/ui/widget/o;

    new-instance v2, Lcom/nut/blehunter/ui/gp;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/gp;-><init>(Lcom/nut/blehunter/ui/SilenceRepeatActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/nut/blehunter/ui/widget/o;-><init>(Landroid/content/Context;Lcom/nut/blehunter/ui/widget/q;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/el;)V

    .line 45
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "repeat_time"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 47
    iget-object v2, p0, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/nut/blehunter/ui/a/t;

    invoke-direct {v3, v0, v1}, Lcom/nut/blehunter/ui/a/t;-><init>([Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/dx;)V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d024a

    if-ne v0, v1, :cond_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    const-string v1, "repeat_time"

    invoke-direct {p0}, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->setResult(ILandroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SilenceRepeatActivity;->finish()V

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
