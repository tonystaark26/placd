import Markdown, { type Components } from "react-markdown";
import remarkGfm from "remark-gfm";

// Card text is written in Markdown (**bold**, lists, tables). This shows it in the café style.
const components: Components = {
  p: (props) => <p className="my-2.5 first:mt-0 last:mb-0" {...props} />,
  strong: (props) => <strong className="font-bold text-espresso" {...props} />,
  ul: (props) => <ul className="my-2.5 list-disc space-y-1.5 pl-5 marker:text-coffee" {...props} />,
  ol: (props) => <ol className="my-2.5 list-decimal space-y-1.5 pl-5 marker:font-sans marker:text-xs marker:text-coffee" {...props} />,
  table: (props) => (
    <div className="my-3 overflow-x-auto rounded-[10px] border border-line">
      <table className="w-full border-collapse font-sans text-[13px] leading-snug" {...props} />
    </div>
  ),
  th: (props) => <th className="border-b border-line bg-latte px-2.5 py-2 text-left font-semibold" {...props} />,
  td: (props) => <td className="border-b border-line px-2.5 py-2 align-top" {...props} />,
  blockquote: (props) => <blockquote className="my-2.5 border-l-2 border-coffee pl-3 italic" {...props} />,
  a: (props) => <a className="text-coffee underline underline-offset-2" target="_blank" rel="noreferrer" {...props} />,
};

export function Prose({ text, className = "" }: { text: string; className?: string }) {
  return (
    <div className={`text-[15px] leading-relaxed ${className}`}>
      <Markdown remarkPlugins={[remarkGfm]} components={components}>
        {text}
      </Markdown>
    </div>
  );
}
