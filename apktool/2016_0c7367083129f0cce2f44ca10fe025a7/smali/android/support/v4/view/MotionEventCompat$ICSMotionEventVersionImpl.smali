.class Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;
.super Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;
.source "MotionEventCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/MotionEventCompat$1;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonState(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompatICS;->getButtonState(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method
