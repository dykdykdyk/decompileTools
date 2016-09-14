.class public final La/a/a;
.super Ljava/lang/Object;
.source "Timber.java"


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/a/e;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Landroid/util/SparseBooleanArray;

.field private static final c:La/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, La/a/a;->a:Ljava/util/List;

    .line 108
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, La/a/a;->b:Landroid/util/SparseBooleanArray;

    .line 111
    new-instance v0, La/a/b;

    invoke-direct {v0}, La/a/b;-><init>()V

    sput-object v0, La/a/a;->c:La/a/e;

    return-void
.end method

.method public static a(La/a/e;)V
    .locals 3

    .prologue
    .line 80
    sget-object v0, La/a/a;->c:La/a/e;

    if-ne p0, v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot plant Timber into itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    instance-of v0, p0, La/a/d;

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, La/a/a;->b:Landroid/util/SparseBooleanArray;

    sget-object v1, La/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 86
    :cond_1
    sget-object v0, La/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 24
    sget-object v0, La/a/a;->c:La/a/e;

    invoke-interface {v0, p0, p1}, La/a/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 39
    sget-object v0, La/a/a;->c:La/a/e;

    invoke-interface {v0, p0, p1, p2}, La/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 34
    sget-object v0, La/a/a;->c:La/a/e;

    invoke-interface {v0, p0, p1}, La/a/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 59
    sget-object v0, La/a/a;->c:La/a/e;

    invoke-interface {v0, p0, p1, p2}, La/a/e;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    sget-object v0, La/a/a;->c:La/a/e;

    invoke-interface {v0, p0, p1}, La/a/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, La/a/a;->c:La/a/e;

    invoke-interface {v0, p0, p1}, La/a/e;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method
