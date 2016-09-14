.class final Lrx/exceptions/c;
.super Lrx/exceptions/b;
.source "CompositeException.java"


# instance fields
.field private final a:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrx/exceptions/b;-><init>(B)V

    .line 237
    iput-object p1, p0, Lrx/exceptions/c;->a:Ljava/io/PrintStream;

    .line 238
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lrx/exceptions/c;->a:Ljava/io/PrintStream;

    return-object v0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lrx/exceptions/c;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 248
    return-void
.end method
