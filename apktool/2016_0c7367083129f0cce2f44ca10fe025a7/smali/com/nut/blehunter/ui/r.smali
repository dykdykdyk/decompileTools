.class final Lcom/nut/blehunter/ui/r;
.super Ljava/lang/Object;
.source "BindEmailActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/BindEmailActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/BindEmailActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/nut/blehunter/ui/r;->a:Lcom/nut/blehunter/ui/BindEmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nut/blehunter/ui/r;->a:Lcom/nut/blehunter/ui/BindEmailActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/BindEmailActivity;->setResult(I)V

    .line 254
    iget-object v0, p0, Lcom/nut/blehunter/ui/r;->a:Lcom/nut/blehunter/ui/BindEmailActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/BindEmailActivity;->finish()V

    .line 255
    return-void
.end method
