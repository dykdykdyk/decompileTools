.class public final Lrx/c/a/g;
.super Ljava/lang/Object;
.source "OnSubscribeSingle.java"

# interfaces
.implements Lrx/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/r",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/c/a/g;->a:Lrx/h;

    .line 36
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 30
    check-cast p1, Lrx/s;

    .line 1040
    new-instance v0, Lrx/c/a/h;

    invoke-direct {v0, p0, p1}, Lrx/c/a/h;-><init>(Lrx/c/a/g;Lrx/s;)V

    .line 2069
    iget-object v1, p1, Lrx/s;->d:Lrx/c/d/v;

    invoke-virtual {v1, v0}, Lrx/c/d/v;->a(Lrx/u;)V

    .line 1084
    iget-object v1, p0, Lrx/c/a/g;->a:Lrx/h;

    invoke-virtual {v1, v0}, Lrx/h;->a(Lrx/t;)Lrx/u;

    .line 30
    return-void
.end method
