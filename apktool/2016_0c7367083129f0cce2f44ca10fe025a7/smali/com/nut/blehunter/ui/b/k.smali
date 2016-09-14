.class final Lcom/nut/blehunter/ui/b/k;
.super Ljava/lang/Object;
.source "GoogleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/j;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/j;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/k;->a:Lcom/nut/blehunter/ui/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/k;->a:Lcom/nut/blehunter/ui/b/j;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/j;->n:Lcom/nut/blehunter/ui/b/p;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/k;->a:Lcom/nut/blehunter/ui/b/j;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/j;->n:Lcom/nut/blehunter/ui/b/p;

    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/k;->a:Lcom/nut/blehunter/ui/b/j;

    invoke-static {v2}, Lcom/nut/blehunter/ui/b/j;->a(Lcom/nut/blehunter/ui/b/j;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/nut/blehunter/ui/b/k;->a:Lcom/nut/blehunter/ui/b/j;

    invoke-static {v4}, Lcom/nut/blehunter/ui/b/j;->b(Lcom/nut/blehunter/ui/b/j;)D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DDB)V

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ui/b/p;->c(Lcom/nut/blehunter/entity/CustomLatLng;)V

    .line 91
    :cond_0
    return-void
.end method
