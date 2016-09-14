.class final Lcom/nut/blehunter/ui/b/a/ac;
.super Ljava/lang/Object;
.source "SelectGenderDialogFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/a/ab;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/a/ab;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/ac;->a:Lcom/nut/blehunter/ui/b/a/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .prologue
    .line 60
    const v0, 0x7f0d0191

    if-ne p2, v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ac;->a:Lcom/nut/blehunter/ui/b/a/ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/b/a/ab;->a(Lcom/nut/blehunter/ui/b/a/ab;I)I

    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ac;->a:Lcom/nut/blehunter/ui/b/a/ab;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/ab;->a(Lcom/nut/blehunter/ui/b/a/ab;)Lcom/nut/blehunter/ui/b/a/ad;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ac;->a:Lcom/nut/blehunter/ui/b/a/ab;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/ab;->a(Lcom/nut/blehunter/ui/b/a/ab;)Lcom/nut/blehunter/ui/b/a/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/ac;->a:Lcom/nut/blehunter/ui/b/a/ab;

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/a/ac;->a:Lcom/nut/blehunter/ui/b/a/ab;

    invoke-static {v2}, Lcom/nut/blehunter/ui/b/a/ab;->b(Lcom/nut/blehunter/ui/b/a/ab;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/ad;->a(Lcom/nut/blehunter/ui/b/a/ab;I)V

    .line 67
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ac;->a:Lcom/nut/blehunter/ui/b/a/ab;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/ab;->c(Lcom/nut/blehunter/ui/b/a/ab;)Lcom/nut/blehunter/ui/b/a/ad;

    .line 69
    :cond_1
    return-void

    .line 62
    :cond_2
    const v0, 0x7f0d0192

    if-ne p2, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/ac;->a:Lcom/nut/blehunter/ui/b/a/ab;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/b/a/ab;->a(Lcom/nut/blehunter/ui/b/a/ab;I)I

    goto :goto_0
.end method
