.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 754
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cradle_current_brightness_value"

    const/high16 v4, 0x42b4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 758
    .local v0, currentBrightness:F
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F
    invoke-static {v2, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$102(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;F)F

    .line 759
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 763
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)F

    move-result v2

    const/high16 v3, 0x437f

    div-float/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 764
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 765
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessChange:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$302(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Z)Z

    .line 766
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->removeDialog(I)V

    .line 767
    return-void
.end method
