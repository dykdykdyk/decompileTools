.class final Landroid/support/v7/a/ak;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/widget/cl;


# instance fields
.field final synthetic a:Landroid/support/v7/a/ah;


# direct methods
.method constructor <init>(Landroid/support/v7/a/ah;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Landroid/support/v7/a/ak;->a:Landroid/support/v7/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Landroid/support/v7/a/ak;->a:Landroid/support/v7/a/ah;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Landroid/support/v7/a/ah;->b(Landroid/support/v7/a/ah;I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 456
    return-void
.end method
