.class final Lcom/nut/blehunter/ui/a/c;
.super Ljava/lang/Object;
.source "AlertSoundAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/a/b;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/a/b;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/c;->a:Lcom/nut/blehunter/ui/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/c;->a:Lcom/nut/blehunter/ui/a/b;

    invoke-static {v0}, Lcom/nut/blehunter/ui/a/b;->a(Lcom/nut/blehunter/ui/a/b;)Lcom/nut/blehunter/ui/a/d;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/nut/blehunter/ui/a/d;->a(I)V

    .line 36
    return-void
.end method
