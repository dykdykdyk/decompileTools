.class final Lcom/nut/blehunter/ui/widget/p;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RecyclerItemClickListener.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/widget/o;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/widget/o;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/p;->a:Lcom/nut/blehunter/ui/widget/o;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method
