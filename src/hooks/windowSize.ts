// 监听窗口屏幕大小变化
import { ref, onMounted, onUnmounted } from 'vue';  
  
export function useScreenSize() {  
  const screenWidth = ref(0);  //窗口屏幕大小
  
  const handleResize = () => {  
    screenWidth.value = window.innerWidth; // 也可以使用document.body.clientWidth，但通常window.innerWidth更常用  
  };  
  
  onMounted(() => {  
    window.addEventListener('resize', handleResize);  
    handleResize(); // 初始时设置一次  
  });  
  
  onUnmounted(() => {  
    window.removeEventListener('resize', handleResize);  
  });  
  
  return {  
    screenWidth  
  };  
}  