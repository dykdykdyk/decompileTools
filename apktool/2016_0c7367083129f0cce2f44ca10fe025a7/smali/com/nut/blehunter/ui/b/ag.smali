.class final Lcom/nut/blehunter/ui/b/ag;
.super Ljava/lang/Object;
.source "NutListFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/ac;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/ac;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/ag;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ag;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/ac;->e(Lcom/nut/blehunter/ui/b/ac;)V

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/ag;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/ac;->b(Lcom/nut/blehunter/ui/b/ac;)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
