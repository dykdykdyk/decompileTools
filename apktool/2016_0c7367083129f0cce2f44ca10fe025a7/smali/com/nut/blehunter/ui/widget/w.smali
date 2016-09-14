.class final Lcom/nut/blehunter/ui/widget/w;
.super Landroid/os/Handler;
.source "SlidingDrawer.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/nut/blehunter/ui/widget/SlidingDrawer;)V
    .locals 0

    .prologue
    .line 944
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/w;->a:Lcom/nut/blehunter/ui/widget/SlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nut/blehunter/ui/widget/SlidingDrawer;B)V
    .locals 0

    .prologue
    .line 944
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/w;-><init>(Lcom/nut/blehunter/ui/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 946
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 951
    :goto_0
    return-void

    .line 948
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/w;->a:Lcom/nut/blehunter/ui/widget/SlidingDrawer;

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c(Lcom/nut/blehunter/ui/widget/SlidingDrawer;)V

    goto :goto_0

    .line 946
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
