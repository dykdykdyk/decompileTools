.class public final Landroid/support/v7/widget/u;
.super Landroid/support/v7/widget/cu;
.source "ActionMenuView.java"


# instance fields
.field public a:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public b:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public c:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public d:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public e:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 820
    invoke-direct {p0, v0, v0}, Landroid/support/v7/widget/cu;-><init>(II)V

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/u;->a:Z

    .line 822
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 807
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/cu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 808
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/u;)V
    .locals 1

    .prologue
    .line 815
    invoke-direct {p0, p1}, Landroid/support/v7/widget/cu;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    iget-boolean v0, p1, Landroid/support/v7/widget/u;->a:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/u;->a:Z

    .line 817
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 811
    invoke-direct {p0, p1}, Landroid/support/v7/widget/cu;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    return-void
.end method
