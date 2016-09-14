.class final Lcom/nut/blehunter/ui/d;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/nut/blehunter/ui/d;->a:Lcom/nut/blehunter/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nut/blehunter/ui/d;->a:Lcom/nut/blehunter/ui/b;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b;->onBackPressed()V

    .line 209
    return-void
.end method
