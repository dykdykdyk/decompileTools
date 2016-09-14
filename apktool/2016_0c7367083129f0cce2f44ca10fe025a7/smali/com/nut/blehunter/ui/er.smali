.class final Lcom/nut/blehunter/ui/er;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/RegisterActivity;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/nut/blehunter/ui/er;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/nut/blehunter/ui/er;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->setResult(I)V

    .line 443
    iget-object v0, p0, Lcom/nut/blehunter/ui/er;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->finish()V

    .line 444
    return-void
.end method
