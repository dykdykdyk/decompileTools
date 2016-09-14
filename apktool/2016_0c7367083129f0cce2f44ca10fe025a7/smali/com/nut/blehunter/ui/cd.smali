.class final Lcom/nut/blehunter/ui/cd;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/nut/blehunter/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/nut/blehunter/ui/cd;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nut/blehunter/ui/LoginActivity;B)V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/cd;-><init>(Lcom/nut/blehunter/ui/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public final call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/nut/blehunter/ui/cd;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lcom/nut/blehunter/ui/LoginActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 625
    return-void
.end method
