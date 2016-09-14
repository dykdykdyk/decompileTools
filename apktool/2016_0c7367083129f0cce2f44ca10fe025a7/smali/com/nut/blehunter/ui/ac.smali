.class final Lcom/nut/blehunter/ui/ac;
.super Ljava/lang/Object;
.source "DialogBoxForPushActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/DialogBoxForPushActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/DialogBoxForPushActivity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/nut/blehunter/ui/ac;->a:Lcom/nut/blehunter/ui/DialogBoxForPushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ac;->a:Lcom/nut/blehunter/ui/DialogBoxForPushActivity;

    const-class v2, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    const-string v1, "com.nutspace.action.logout"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/nut/blehunter/ui/ac;->a:Lcom/nut/blehunter/ui/DialogBoxForPushActivity;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    iget-object v0, p0, Lcom/nut/blehunter/ui/ac;->a:Lcom/nut/blehunter/ui/DialogBoxForPushActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;->finish()V

    .line 217
    return-void
.end method
