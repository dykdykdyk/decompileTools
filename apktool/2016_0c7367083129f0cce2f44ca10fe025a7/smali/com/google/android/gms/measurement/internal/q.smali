.class final Lcom/google/android/gms/measurement/internal/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ComponentName;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/o;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q;->b:Lcom/google/android/gms/measurement/internal/o;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/q;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q;->b:Lcom/google/android/gms/measurement/internal/o;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/o;->c:Lcom/google/android/gms/measurement/internal/i;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/i;Landroid/content/ComponentName;)V

    return-void
.end method
