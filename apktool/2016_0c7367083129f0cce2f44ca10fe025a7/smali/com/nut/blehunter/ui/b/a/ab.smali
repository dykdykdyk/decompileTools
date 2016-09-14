.class public final Lcom/nut/blehunter/ui/b/a/ab;
.super Lcom/nut/blehunter/ui/b/a/a;
.source "SelectGenderDialogFragment.java"


# instance fields
.field public f:Lcom/nut/blehunter/ui/b/a/ad;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/a/a;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/nut/blehunter/ui/b/a/ab;->g:I

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/a/ab;I)I
    .locals 0

    .prologue
    .line 12
    iput p1, p0, Lcom/nut/blehunter/ui/b/a/ab;->g:I

    return p1
.end method

.method public static a(Landroid/content/Context;I)Lcom/nut/blehunter/ui/b/a/ab;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 25
    new-instance v0, Lcom/nut/blehunter/ui/b/a/ab;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/ab;-><init>()V

    .line 26
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/nut/blehunter/ui/b/a/b;->a(Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Lcom/nut/blehunter/ui/b/a/b;->b(Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030067

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 33
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/ab;->a(Lcom/nut/blehunter/ui/b/a/b;)V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string v2, "gender"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/ab;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/a/ab;)Lcom/nut/blehunter/ui/b/a/ad;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ab;->f:Lcom/nut/blehunter/ui/b/a/ad;

    return-object v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/b/a/ab;)I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/nut/blehunter/ui/b/a/ab;->g:I

    return v0
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/b/a/ab;)Lcom/nut/blehunter/ui/b/a/ad;
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/ab;->f:Lcom/nut/blehunter/ui/b/a/ad;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/ab;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gender"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    check-cast p1, Landroid/widget/RadioGroup;

    .line 52
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 53
    const v0, 0x7f0d0191

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 57
    :cond_0
    :goto_0
    new-instance v0, Lcom/nut/blehunter/ui/b/a/ac;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/ac;-><init>(Lcom/nut/blehunter/ui/b/a/ab;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 71
    return-void

    .line 54
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 55
    const v0, 0x7f0d0192

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b/a/a;->onAttach(Landroid/app/Activity;)V

    .line 43
    instance-of v0, p1, Lcom/nut/blehunter/ui/b/a/ad;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Lcom/nut/blehunter/ui/b/a/ad;

    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/ab;->f:Lcom/nut/blehunter/ui/b/a/ad;

    .line 46
    :cond_0
    return-void
.end method
