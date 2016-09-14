.class final Lrx/exceptions/d;
.super Lrx/exceptions/b;
.source "CompositeException.java"


# instance fields
.field private final a:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrx/exceptions/b;-><init>(B)V

    .line 255
    iput-object p1, p0, Lrx/exceptions/d;->a:Ljava/io/PrintWriter;

    .line 256
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lrx/exceptions/d;->a:Ljava/io/PrintWriter;

    return-object v0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lrx/exceptions/d;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 266
    return-void
.end method
