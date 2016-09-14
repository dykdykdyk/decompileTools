.class final Lcom/nut/blehunter/ui/cl;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/Main2Activity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 0

    .prologue
    .line 942
    iput-object p1, p0, Lcom/nut/blehunter/ui/cl;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/nut/blehunter/ui/cl;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->n(Lcom/nut/blehunter/ui/Main2Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/nut/blehunter/ui/cl;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->o(Lcom/nut/blehunter/ui/Main2Activity;)V

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/cl;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->s(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 949
    return-void
.end method
