.class Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;
.super Landroid/app/SharedElementCallback;
.source "ActivityCompatApi23.java"


# instance fields
.field private mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    .line 82
    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onRejectSharedElements(Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 96
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 89
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;

    new-instance v1, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;

    invoke-direct {v1, p0, p3}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;-><init>(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V

    .line 130
    return-void
.end method