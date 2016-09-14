.class public final Lcom/loc/bc;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final a:[Ljava/io/InputStream;

.field final synthetic b:Lcom/loc/ax;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/loc/ax;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 1

    iput-object p1, p0, Lcom/loc/bc;->b:Lcom/loc/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/loc/bc;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/loc/bc;->d:J

    iput-object p5, p0, Lcom/loc/bc;->a:[Ljava/io/InputStream;

    iput-object p6, p0, Lcom/loc/bc;->e:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/ax;Ljava/lang/String;J[Ljava/io/InputStream;[JB)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/loc/bc;-><init>(Lcom/loc/ax;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v1, p0, Lcom/loc/bc;->a:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/loc/bh;->a(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
