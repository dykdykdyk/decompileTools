.class final Landroid/support/a/a/c;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field final synthetic a:Landroid/support/a/a/b;


# direct methods
.method constructor <init>(Landroid/support/a/a/b;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Landroid/support/a/a/c;->a:Landroid/support/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Landroid/support/a/a/c;->a:Landroid/support/a/a/b;

    invoke-virtual {v0}, Landroid/support/a/a/b;->invalidateSelf()V

    .line 639
    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Landroid/support/a/a/c;->a:Landroid/support/a/a/b;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/a/a/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 644
    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Landroid/support/a/a/c;->a:Landroid/support/a/a/b;

    invoke-virtual {v0, p2}, Landroid/support/a/a/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 649
    return-void
.end method
