.class final Lcom/nut/blehunter/ui/da;
.super Ljava/lang/Object;
.source "MapLocationActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/MapLocationActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/MapLocationActivity;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/nut/blehunter/ui/da;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/nut/blehunter/ui/da;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->e(Lcom/nut/blehunter/ui/MapLocationActivity;)Lcom/nut/blehunter/ui/b/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/nut/blehunter/ui/da;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->e(Lcom/nut/blehunter/ui/MapLocationActivity;)Lcom/nut/blehunter/ui/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/i;->d()V

    .line 700
    iget-object v0, p0, Lcom/nut/blehunter/ui/da;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 701
    iget-object v0, p0, Lcom/nut/blehunter/ui/da;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/MapLocationActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 703
    :cond_0
    return-void
.end method
