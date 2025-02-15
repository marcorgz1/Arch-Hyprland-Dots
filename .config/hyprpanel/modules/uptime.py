#!/usr/bin/env python3

import psutil
from datetime import datetime

class UptimeModule:
    def __init__(self):
        self.name = "uptime"
        self.update_interval = 60  # Actualizar cada minuto

    def format_uptime(self, seconds):
        """Formatea el tiempo de actividad en un formato legible"""
        days = seconds // (24 * 3600)
        seconds = seconds % (24 * 3600)
        hours = seconds // 3600
        seconds %= 3600
        minutes = seconds // 60
        
        if days > 0:
            return f"{int(days)}d {int(hours)}h {int(minutes)}m"
        elif hours > 0:
            return f"{int(hours)}h {int(minutes)}m"
        else:
            return f"{int(minutes)}m"

    def get_uptime(self):
        """Obtiene el tiempo de actividad del sistema"""
        boot_time = psutil.boot_time()
        now = datetime.now().timestamp()
        uptime_seconds = now - boot_time
        return self.format_uptime(uptime_seconds)

    def update(self):
        """Actualiza y devuelve el estado del módulo"""
        return {
            "text": f"󰔟 {self.get_uptime()}",  # Icono de reloj + tiempo
            "class": "uptime",
            "tooltip": "Tiempo desde el último inicio"
        }
