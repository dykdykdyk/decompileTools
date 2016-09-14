.class public abstract Lcom/nut/blehunter/ui/a/a/a;
.super Lcom/nut/blehunter/ui/a/a/c;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nut/blehunter/ui/a/a/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected d:Landroid/content/Context;

.field protected e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected g:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p3}, Lcom/nut/blehunter/ui/a/a/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 22
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/a/a;->d:Landroid/content/Context;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/a/a/a;->g:Landroid/view/LayoutInflater;

    .line 24
    iput p2, p0, Lcom/nut/blehunter/ui/a/a/a;->e:I

    .line 25
    iput-object p3, p0, Lcom/nut/blehunter/ui/a/a/a;->f:Ljava/util/List;

    .line 27
    new-instance v0, Lcom/nut/blehunter/ui/a/a/b;

    invoke-direct {v0, p0, p2}, Lcom/nut/blehunter/ui/a/a/b;-><init>(Lcom/nut/blehunter/ui/a/a/a;I)V

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/a/a/a;->a(Lcom/nut/blehunter/ui/a/a/a/a;)Lcom/nut/blehunter/ui/a/a/c;

    .line 43
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/nut/blehunter/ui/a/a/a/c;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/ui/a/a/a/c;",
            "TT;I)V"
        }
    .end annotation
.end method
