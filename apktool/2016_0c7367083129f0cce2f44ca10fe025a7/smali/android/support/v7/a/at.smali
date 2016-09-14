.class public final Landroid/support/v7/a/at;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/view/ViewGroup;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroid/support/v7/view/menu/o;

.field k:Landroid/support/v7/view/menu/l;

.field l:Landroid/content/Context;

.field m:Z

.field n:Z

.field o:Z

.field public p:Z

.field q:Z

.field r:Z

.field s:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1933
    iput p1, p0, Landroid/support/v7/a/at;->a:I

    .line 1935
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/a/at;->q:Z

    .line 1936
    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/view/menu/o;)V
    .locals 2

    .prologue
    .line 1988
    iget-object v0, p0, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-ne p1, v0, :cond_1

    .line 1997
    :cond_0
    :goto_0
    return-void

    .line 1990
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    if-eqz v0, :cond_2

    .line 1991
    iget-object v0, p0, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/a/at;->k:Landroid/support/v7/view/menu/l;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Landroid/support/v7/view/menu/ae;)V

    .line 1993
    :cond_2
    iput-object p1, p0, Landroid/support/v7/a/at;->j:Landroid/support/v7/view/menu/o;

    .line 1994
    if-eqz p1, :cond_0

    .line 1995
    iget-object v0, p0, Landroid/support/v7/a/at;->k:Landroid/support/v7/view/menu/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/at;->k:Landroid/support/v7/view/menu/l;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/ae;)V

    goto :goto_0
.end method
