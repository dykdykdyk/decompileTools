.class public final Lcom/google/android/gms/internal/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/e;


# static fields
.field public static final a:Lcom/google/android/gms/internal/cb;


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/lang/Long;

.field public final i:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/internal/cc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cc;-><init>()V

    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/cb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cb;-><init>(B)V

    .line 0
    sput-object v0, Lcom/google/android/gms/internal/cb;->a:Lcom/google/android/gms/internal/cb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cb;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cb;->c:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/cb;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cb;->e:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cb;->g:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/cb;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/cb;->h:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/cb;->i:Ljava/lang/Long;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cb;-><init>()V

    return-void
.end method
