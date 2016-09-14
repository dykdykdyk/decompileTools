.class final Lcom/nut/blehunter/ui/ad;
.super Ljava/lang/Object;
.source "DialogBoxForPushActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nut/blehunter/ui/DialogBoxForPushActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/DialogBoxForPushActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/nut/blehunter/ui/ad;->b:Lcom/nut/blehunter/ui/DialogBoxForPushActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/ad;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 4

    .prologue
    .line 250
    new-instance v0, Lcom/nut/blehunter/c;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ad;->b:Lcom/nut/blehunter/ui/DialogBoxForPushActivity;

    invoke-direct {v0, v1}, Lcom/nut/blehunter/c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nut/blehunter/ui/ad;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    return-void
.end method
