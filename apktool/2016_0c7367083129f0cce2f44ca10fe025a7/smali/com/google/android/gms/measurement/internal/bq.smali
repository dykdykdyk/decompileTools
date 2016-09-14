.class public final Lcom/google/android/gms/measurement/internal/bq;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/bp;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/bp;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/bq;->a:Lcom/google/android/gms/measurement/internal/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/bq;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/bq;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bq;->a:Lcom/google/android/gms/measurement/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/bp;->a(Lcom/google/android/gms/measurement/internal/bp;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/bq;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/bq;->e:Z

    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 0
    .line 1000
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/bq;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/bq;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bq;->a:Lcom/google/android/gms/measurement/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/bp;->a(Lcom/google/android/gms/measurement/internal/bp;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/bq;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/bq;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/bq;->e:Z

    .line 0
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/bq;->e:Z

    return v0
.end method
