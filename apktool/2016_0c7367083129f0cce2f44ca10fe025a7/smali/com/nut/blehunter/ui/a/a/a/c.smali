.class public final Lcom/nut/blehunter/ui/a/a/a/c;
.super Landroid/support/v7/widget/ex;
.source "ViewHolder.java"


# instance fields
.field public l:Landroid/view/View;

.field private m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ex;-><init>(Landroid/view/View;)V

    .line 32
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/a/a/c;->n:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/nut/blehunter/ui/a/a/a/c;->l:Landroid/view/View;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/a/a/c;->m:Landroid/util/SparseArray;

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)Lcom/nut/blehunter/ui/a/a/a/c;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/nut/blehunter/ui/a/a/a/c;

    invoke-direct {v0, p0, p1}, Lcom/nut/blehunter/ui/a/a/a/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 40
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/nut/blehunter/ui/a/a/a/c;
    .locals 2

    .prologue
    .line 45
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/nut/blehunter/ui/a/a/a/c;

    invoke-direct {v1, p0, v0}, Lcom/nut/blehunter/ui/a/a/a/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lcom/nut/blehunter/ui/a/a/a/c;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/nut/blehunter/ui/a/a/a/c;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-object p0
.end method

.method public final c(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/a/c;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 59
    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/a/c;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/nut/blehunter/ui/a/a/a/c;->m:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    :cond_0
    return-object v0
.end method
