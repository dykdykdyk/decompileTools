.class final Lcom/google/android/gms/measurement/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/google/android/gms/measurement/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;Z)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f;->i:Lcom/google/android/gms/measurement/internal/e;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/f;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/f;->c:J

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/f;->d:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/f;->e:Z

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/f;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/f;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/f;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/f;->i:Lcom/google/android/gms/measurement/internal/e;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/f;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/f;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/f;->c:J

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/f;->d:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/f;->e:Z

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/f;->f:Z

    iget-boolean v9, p0, Lcom/google/android/gms/measurement/internal/f;->g:Z

    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/f;->h:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/e;->a(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
