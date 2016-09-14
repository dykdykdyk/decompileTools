.class final Lcom/nut/blehunter/ui/a/a/b;
.super Ljava/lang/Object;
.source "CommonAdapter.java"

# interfaces
.implements Lcom/nut/blehunter/ui/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nut/blehunter/ui/a/a/a/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nut/blehunter/ui/a/a/a;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/a/a/a;I)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/a/b;->b:Lcom/nut/blehunter/ui/a/a/a;

    iput p2, p0, Lcom/nut/blehunter/ui/a/a/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/nut/blehunter/ui/a/a/b;->a:I

    return v0
.end method

.method public final a(Lcom/nut/blehunter/ui/a/a/a/c;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/ui/a/a/a/c;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/b;->b:Lcom/nut/blehunter/ui/a/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nut/blehunter/ui/a/a/a;->a(Lcom/nut/blehunter/ui/a/a/a/c;Ljava/lang/Object;I)V

    .line 41
    return-void
.end method
