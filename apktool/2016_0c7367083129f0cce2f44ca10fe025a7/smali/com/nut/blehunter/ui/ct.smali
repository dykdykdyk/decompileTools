.class final Lcom/nut/blehunter/ui/ct;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/Main2Activity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/nut/blehunter/ui/ct;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 3

    .prologue
    .line 667
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/nut/blehunter/ui/ct;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/ui/Main2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 670
    return-void
.end method
