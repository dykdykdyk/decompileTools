.class final Lcom/nut/blehunter/ui/cz;
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
    .line 339
    iput-object p1, p0, Lcom/nut/blehunter/ui/cz;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 3

    .prologue
    .line 342
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/cz;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    const-class v2, Lcom/nut/blehunter/ui/ShareManageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/cz;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/MapLocationActivity;->b(Lcom/nut/blehunter/ui/MapLocationActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 344
    iget-object v1, p0, Lcom/nut/blehunter/ui/cz;->a:Lcom/nut/blehunter/ui/MapLocationActivity;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/MapLocationActivity;->startActivity(Landroid/content/Intent;)V

    .line 345
    return-void
.end method
